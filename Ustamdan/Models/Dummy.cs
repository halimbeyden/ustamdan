using NLipsum.Core;
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
            for (int j = 0; j < random.Next(100,120); j++)
            {
                var post = new Post();
                post.AuthorId = db.Users.First().Id;
                post.DateCreated = DateTime.Now;
                post.DateModified = DateTime.Now;
                post.Title = LipsumGenerator.Generate(1,Features.Sentences,null,Lipsums.TheRaven);
                post.PostContent = LipsumGenerator.Generate(random.Next(5,15), Features.Paragraphs, null, Lipsums.LoremIpsum);
                post.Description = LipsumGenerator.Generate(3, Features.Sentences, null, Lipsums.NagyonFaj);
                post.Language = ((Language)random.Next(2)).GetStringValue();
                post.CarouselMedia = CreateMedia();
                post.Type = PostType.Image;
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
                post.IsPublished = true;
                post.Status = PostStatus.Published;
                db.Posts.Add(post);
                db.SaveChanges();
            }
        }
        private static List<PostMedia> CreateMedia()
        {
            var pms = new List<PostMedia>();
            for (int i = 0; i < random.Next(1, 8); i++)
            {
                var n = (PostType)random.Next(2);
                if(n == PostType.Image)
                    pms.Add(new PostMedia("/Content/Media/katranci.jpg", n));
                else
                    pms.Add(new PostMedia("https://www.youtube.com/embed/QyuzbiegyK0", n));
            }
            return pms;
        }
        private static void CreateArea(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1,7); i++)
            {
                Area area = new Area(LipsumGenerator.Generate(1, Features.Words, null, Lipsums.TheRaven));
                db.Areas.Add(area);
            }
            db.SaveChanges();
        }
        private static void CreateCategory(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1, 10); i++)
            {
                Category cat = new Category(LipsumGenerator.Generate(1, Features.Words, null, Lipsums.LoremIpsum));
                db.Categories.Add(cat);
            }
            db.SaveChanges();
        }
        private static void CreateTag(ApplicationDbContext db)
        {
            for (int i = 0; i < random.Next(1, 10); i++)
            {
                Tag tag = new Tag(LipsumGenerator.Generate(1, Features.Words, null, Lipsums.Faust));
                db.Tags.Add(tag);
            }
            db.SaveChanges();
        }
        //private static string generateRandomString(int length)
        //{
        //    const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ ";
        //    return new string(Enumerable.Repeat(chars, length)
        //      .Select(s => s[random.Next(s.Length)]).ToArray());
        //}
        private static int[] generateRandomIntSequence(int max,int min = 0)
        {
            int length = random.Next(min, max);
            var arr = Enumerable.Range(min, max - min).OrderBy(n => Guid.NewGuid());
            return arr.Take(length).ToArray();
        }
    }
}