using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Ustamdan.Models.IdeaCube;

namespace Ustamdan.ViewModels
{
    public class IdeaViewModel
    {
        public int Id { get; set; }
        public int Score { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public IdeaType Type { get; set; }
        public string MediaUrl { get; set; }
        public string Author { get; set; }

        public IdeaViewModel(Idea idea)
        {
            Id = idea.Id;
            Score = idea.Score;
            Title = idea.Title;
            Type = idea.Type;
            MediaUrl = idea.MediaUrl;
            if(idea.CreatedBy != null)
                Author = idea.CreatedBy.Fullname;

        }
    }
}