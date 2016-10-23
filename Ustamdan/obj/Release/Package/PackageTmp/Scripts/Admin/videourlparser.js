var videoEmbed = {
    convertMedia: function (html) {
        var pattern1 = /(?:http?s?:\/\/)?(?:www\.)?(?:vimeo\.com)\/?(.+)/g;
        var pattern2 = /(?:http?s?:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.+)/g;
        var pattern3 = /([-a-zA-Z0-9@:%_\+.~#?&//=]{2,256}\.[a-z]{2,4}\b(\/[-a-zA-Z0-9@:%_\+.~#?&//=]*)?(?:jpg|jpeg|gif|png))/gi;

        if (pattern1.test(html)) {
            var replacement = '//player.vimeo.com/video/$1';

            var html = html.replace(pattern1, replacement);
        }


        if (pattern2.test(html)) {
            var replacement = 'http://www.youtube.com/embed/$1';
            var html = html.replace(pattern2, replacement);
        }


        if (pattern3.test(html)) {
            var replacement = '$1';
            var html = html.replace(pattern3, replacement);
        }
        return html;
    }
}