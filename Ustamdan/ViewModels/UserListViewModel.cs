using Microsoft.AspNet.Identity.EntityFramework;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models;

namespace Ustamdan.ViewModels
{
    public enum UserType
    {
        Admin,
        Author,
        Standard
    }
    public class UserListViewModel
    {
        public string Id { get; set; }
        public string Fullname { get; set; }
        public string Email { get; set; }
        public string ProfileImage { get; set; }
        public UserType UserType { get; set; }
        public UserListViewModel()
        {

        }
        public UserListViewModel(ApplicationUser user)
        {
            this.Id = user.Id;
            this.Fullname = user.Fullname;
            this.Email = user.Email;
            this.UserType = user.Type;
            this.ProfileImage = user.ProfileImage;
        }
    }
}