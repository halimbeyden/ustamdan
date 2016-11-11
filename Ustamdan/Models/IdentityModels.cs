using System.Data.Entity;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Ustamdan.Models.Blog;
using Ustamdan.ViewModels;

namespace Ustamdan.Models
{
    // You can add profile data for the user by adding more properties to your ApplicationUser class, please visit http://go.microsoft.com/fwlink/?LinkID=317594 to learn more.
    public class ApplicationUser : IdentityUser
    {
        public string Fullname { get; set; }
        public UserType Type { get; set; }
        public async Task<ClaimsIdentity> GenerateUserIdentityAsync(UserManager<ApplicationUser> manager)
        {
            // Note the authenticationType must match the one defined in CookieAuthenticationOptions.AuthenticationType
            var userIdentity = await manager.CreateIdentityAsync(this, DefaultAuthenticationTypes.ApplicationCookie);
            userIdentity.AddClaim(new Claim("FullName", Fullname));

            // Add custom user claims here
            return userIdentity;
        }
    }

    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext()
            : base("DefaultConnection", throwIfV1Schema: false)
        {
            Database.SetInitializer(new MigrateDatabaseToLatestVersion<ApplicationDbContext, Migrations.Configuration>("DefaultConnection"));
        }

        public static ApplicationDbContext Create()
        {
            return new ApplicationDbContext();
        }
        public DbSet<Post> Posts { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Area> Areas { get; set; }
        public DbSet<PostMedia> PostMedias { get; set; }
        public DbSet<Comment> Comments { get; set; }
        public DbSet<Tag> Tags { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.Entity<Post>()
                        .HasMany<Category>(p => p.Categories)
                        .WithMany(c => c.Posts)
                        .Map(cs =>
                        {
                            cs.MapLeftKey("PostRefId");
                            cs.MapRightKey("CategotyRefId");
                            cs.ToTable("PostCategory");
                        });
            modelBuilder.Entity<Post>()
                      .HasMany<Tag>(p => p.Tags)
                      .WithMany(t => t.Posts)
                      .Map(cs =>
                      {
                          cs.MapLeftKey("PostRefId");
                          cs.MapRightKey("TagRefId");
                          cs.ToTable("PostTag");
                      });
        }
    }
}