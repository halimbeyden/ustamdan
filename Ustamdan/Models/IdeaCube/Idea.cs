using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Ustamdan.Models.IdeaCube
{
    public enum IdeaType
    {
        Bug,
        Enhancement,
        Proposal
    }
    public enum IdeaStatus
    {
        Created,
        Approved,
        Solved,
        Deleted
    }
    public class Idea
    {
        public int Id { get; set; }
        public int Score { get; set; }
        public string Title { get; set; }
        [DataType(DataType.MultilineText)]
        public string Description { get; set; }
        public IdeaType Type { get; set; }
        public IdeaStatus Status { get; set; }
        [DataType(DataType.ImageUrl)]
        public string MediaUrl { get; set; }
        public string CreatedById { get; set; }
        public DateTime? ApprovedDate { get; set; }
        public DateTime CreationDate { get; set; }
        public DateTime? UpdateDate { get; set; }

        [ForeignKey("CreatedById")]
        public virtual ApplicationUser CreatedBy { get; set; }
        public virtual List<IdeaComment> IdeaComments { get; set; }
        public virtual List<IdeaEmoticon> IdeaEmoticons { get; set; }
        public List<IdeaComment> getComments()
        {
            return IdeaComments.Where(x => !x.Is_Deleted).ToList();
        }
    }
}