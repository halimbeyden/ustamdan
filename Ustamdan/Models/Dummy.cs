using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models.Blog;
using Ustamdan.ViewModels;

namespace Ustamdan.Models
{
    public class Dummy
    {
        private static Random random = new Random();
        
        public static void CreateData(ApplicationDbContext db)
        {
            Console.WriteLine("Creating Areas...");
            CreateArea(db);
            Console.WriteLine("Creating Categories...");
            CreateCategory(db);
            Console.WriteLine("Creating Category...");
            CreateTag(db);
            Console.WriteLine("Creating Posts...");
            CreatePost(db);
            Console.WriteLine("Data creation is finished.");
        }
        private static void CreatePost(ApplicationDbContext db)
        {
            for (int j = 0; j < random.Next(0,120); j++)
            {
                var post = new Post();
                post.AuthorId = db.Users.First().Id;
                post.DateCreated = DateTime.Now;
                post.DateModified = DateTime.Now;
                post.Title = generateRandomString(10);
                post.PostContent = generateRandomString(300);
                post.Description = generateRandomString(20);
                post.Language = ((Language)random.Next(1)).GetStringValue();
                post.MediaURL = "/Content/Media/katranci.jpg";
                post.Type = PostType.Image;
                post.Status = PostStatus.Published;
                post.HasLocation = true;
                post.Latitude = random.NextDouble() * 10 + 35;
                post.Longitude = random.NextDouble() * 10 + 30;
                post.Categories = new List<Category>();
                var arr = generateRandomIntSequence(db.Categories.Count() - 1);
                post.Categories.AddRange(
                    db.Categories.ToList()
                    .Select((x, i) => new { c = x, i = i })
                    .Where(x => arr.Contains(x.i))
                    .Select(x => x.c));
                post.Tags = new List<Tag>();
                var arrTag = generateRandomIntSequence(db.Tags.Count() - 1);
                post.Categories.AddRange(
                    db.Categories.ToList()
                    .Select((x, i) => new { t = x, i = i })
                    .Where(x => arrTag.Contains(x.i))
                    .Select(x => x.t));
                post.AreaId = db.Areas.ToList().OrderBy(x => new Guid()).First().Id;
                db.Posts.Add(post);
                db.SaveChanges();
            }
        }
        private static void CreateArea(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1,7); i++)
            {
                string d = "sdfgksndflgqerngşmvşzvğcxqwqwerrtytyıtyouıüğpçzöcvçööxczb";
                Area area = new Area(d.Substring(random.Next(0, 30), 6));
                db.Areas.Add(area);
            }
            db.SaveChanges();
        }
        private static void CreateCategory(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1, 10); i++)
            {
                string d = "zxcvbnmöçasddfghjkklşiqwertyuyııopüğ";
                Category cat = new Category(d.Substring(random.Next(0, 30), 6));
                db.Categories.Add(cat);
            }
            db.SaveChanges();
        }
        private static void CreateTag(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1, 10); i++)
            {
                string d = "zxcvbnmöçasddfghjkklşiqwertyuyııopüğ";
                Tag tag = new Tag();
                tag.Name = d.Substring(random.Next(0, 30), 6);
                db.Tags.Add(tag);
            }
            db.SaveChanges();
        }
        private static string generateRandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
        private static int[] generateRandomIntSequence(int max,int min = 0)
        {
            int length = random.Next(min, max);
            var arr = Enumerable.Range(min, max - min).OrderBy(n => Guid.NewGuid());
            return arr.Take(length).ToArray();
        }
    }
}