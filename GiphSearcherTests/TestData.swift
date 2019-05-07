//
//  TestData.swift
//  GiphSearcherTests
//
//  Created by Johann Kerr on 4/28/19.
//  Copyright © 2019 Johann Kerr. All rights reserved.
//

import Foundation

struct TestData {
    static let unsuccessfulFetchJSON = """
        {"data": {}}
    """
    static let successfulFetchJSON = """
                    {
                       "data":
                       [
                           {
                               "type": "gif",
                               "id": "82UMSsbQPRlDIb1vU3",
                               "slug": "thebachelor-abc-bachelor-the-82UMSsbQPRlDIb1vU3",
                               "url": "https://giphy.com/gifs/thebachelor-abc-bachelor-the-82UMSsbQPRlDIb1vU3",
                               "bitly_gif_url": "https://gph.is/g/E0voAmZ",
                               "bitly_url": "https://gph.is/g/E0voAmZ",
                               "embed_url": "https://giphy.com/embed/82UMSsbQPRlDIb1vU3",
                               "username": "thebachelor",
                               "source": "",
                               "rating": "g",
                               "content_url": "",
                               "source_tld": "",
                               "source_post_url": "",
                               "is_sticker": 0,
                               "import_datetime": "2019-03-12 01:18:01",
                               "trending_datetime": "2019-04-26 19:59:08",
                               "user":
                               {
                                   "avatar_url": "https://media3.giphy.com/avatars/thebachelor/1QnthgYShFaX.jpg",
                                   "banner_url": "https://media3.giphy.com/headers/thebachelor/hsYmuei1CWqn.jpg",
                                   "banner_image": "https://media3.giphy.com/headers/thebachelor/hsYmuei1CWqn.jpg",
                                   "profile_url": "https://giphy.com/thebachelor/",
                                   "username": "thebachelor",
                                   "display_name": "The Bachelor",
                                   "is_verified": true
                               },
                               "images":
                               {
                                   "fixed_height_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_s.gif",
                                       "width": "314",
                                       "height": "200",
                                       "size": "22049"
                                   },
                                   "original_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy_s.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "86912"
                                   },
                                   "fixed_width":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.gif",
                                       "width": "200",
                                       "height": "128",
                                       "size": "258269",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.mp4",
                                       "mp4_size": "35500",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.webp",
                                       "webp_size": "141108"
                                   },
                                   "fixed_height_small_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100_s.gif",
                                       "width": "157",
                                       "height": "100",
                                       "size": "7969"
                                   },
                                   "fixed_height_downsampled":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_d.gif",
                                       "width": "314",
                                       "height": "200",
                                       "size": "111335",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_d.webp",
                                       "webp_size": "66862"
                                   },
                                   "preview":
                                   {
                                       "width": "357",
                                       "height": "228",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.mp4",
                                       "mp4_size": "30716"
                                   },
                                   "fixed_height_small":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.gif",
                                       "width": "157",
                                       "height": "100",
                                       "size": "171588",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.mp4",
                                       "mp4_size": "24810",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.webp",
                                       "webp_size": "98738"
                                   },
                                   "downsized_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized_s.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "31226"
                                   },
                                   "downsized":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "857824"
                                   },
                                   "downsized_large":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "1455019"
                                   },
                                   "fixed_width_small_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w_s.gif",
                                       "width": "100",
                                       "height": "64",
                                       "size": "3929"
                                   },
                                   "preview_webp":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.webp",
                                       "width": "248",
                                       "height": "158",
                                       "size": "44874"
                                   },
                                   "fixed_width_still":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_s.gif",
                                       "width": "200",
                                       "height": "128",
                                       "size": "13443"
                                   },
                                   "fixed_width_small":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.gif",
                                       "width": "100",
                                       "height": "64",
                                       "size": "88649",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.mp4",
                                       "mp4_size": "13071",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.webp",
                                       "webp_size": "48068"
                                   },
                                   "downsized_small":
                                   {
                                       "width": "376",
                                       "height": "240",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized-small.mp4",
                                       "mp4_size": "48716"
                                   },
                                   "fixed_width_downsampled":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_d.gif",
                                       "width": "200",
                                       "height": "128",
                                       "size": "54387",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_d.webp",
                                       "webp_size": "32794"
                                   },
                                   "downsized_medium":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "1455019"
                                   },
                                   "original":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                                       "width": "480",
                                       "height": "306",
                                       "size": "1455019",
                                       "frames": "30",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.mp4",
                                       "mp4_size": "211976",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.webp",
                                       "webp_size": "372054",
                                       "hash": "8fe8051b9cea9e7490392b688bb99d79"
                                   },
                                   "fixed_height":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.gif",
                                       "width": "314",
                                       "height": "200",
                                       "size": "513591",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.mp4",
                                       "mp4_size": "79481",
                                       "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.webp",
                                       "webp_size": "271036"
                                   },
                                   "hd":
                                   {
                                       "width": "972",
                                       "height": "620",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-hd.mp4",
                                       "mp4_size": "1075923"
                                   },
                                   "looping":
                                   {
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-loop.mp4",
                                       "mp4_size": "2308472"
                                   },
                                   "original_mp4":
                                   {
                                       "width": "480",
                                       "height": "306",
                                       "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.mp4",
                                       "mp4_size": "211976"
                                   },
                                   "preview_gif":
                                   {
                                       "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.gif",
                                       "width": "151",
                                       "height": "96",
                                       "size": "49451"
                                   },
                                   "480w_still":
                                   {
                                       "url": "https://media0.giphy.com/media/82UMSsbQPRlDIb1vU3/480w_s.jpg",
                                       "width": "480",
                                       "height": "306"
                                   }
                               },
                               "title": "colton underwood crying GIF by The Bachelor",
                               "analytics":
                               {
                                   "onload":
                                   {
                                       "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=SEEN"
                                   },
                                   "onclick":
                                   {
                                       "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=CLICK"
                                   },
                                   "onsent":
                                   {
                                       "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=SENT"
                                   }
                               }
                           }]
                     }
                """
    
    static let gifJSON = """
         {
           "type": "gif",
           "id": "82UMSsbQPRlDIb1vU3",
           "slug": "thebachelor-abc-bachelor-the-82UMSsbQPRlDIb1vU3",
           "url": "https://giphy.com/gifs/thebachelor-abc-bachelor-the-82UMSsbQPRlDIb1vU3",
           "bitly_gif_url": "https://gph.is/g/E0voAmZ",
           "bitly_url": "https://gph.is/g/E0voAmZ",
           "embed_url": "https://giphy.com/embed/82UMSsbQPRlDIb1vU3",
           "username": "thebachelor",
           "source": "",
           "rating": "g",
           "content_url": "",
           "source_tld": "",
           "source_post_url": "",
           "is_sticker": 0,
           "import_datetime": "2019-03-12 01:18:01",
           "trending_datetime": "2019-04-26 19:59:08",
           "user":
           {
               "avatar_url": "https://media3.giphy.com/avatars/thebachelor/1QnthgYShFaX.jpg",
               "banner_url": "https://media3.giphy.com/headers/thebachelor/hsYmuei1CWqn.jpg",
               "banner_image": "https://media3.giphy.com/headers/thebachelor/hsYmuei1CWqn.jpg",
               "profile_url": "https://giphy.com/thebachelor/",
               "username": "thebachelor",
               "display_name": "The Bachelor",
               "is_verified": true
           },
           "images":
           {
               "fixed_height_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_s.gif",
                   "width": "314",
                   "height": "200",
                   "size": "22049"
               },
               "original_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy_s.gif",
                   "width": "480",
                   "height": "306",
                   "size": "86912"
               },
               "fixed_width":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.gif",
                   "width": "200",
                   "height": "128",
                   "size": "258269",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.mp4",
                   "mp4_size": "35500",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w.webp",
                   "webp_size": "141108"
               },
               "fixed_height_small_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100_s.gif",
                   "width": "157",
                   "height": "100",
                   "size": "7969"
               },
               "fixed_height_downsampled":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_d.gif",
                   "width": "314",
                   "height": "200",
                   "size": "111335",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200_d.webp",
                   "webp_size": "66862"
               },
               "preview":
               {
                   "width": "357",
                   "height": "228",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.mp4",
                   "mp4_size": "30716"
               },
               "fixed_height_small":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.gif",
                   "width": "157",
                   "height": "100",
                   "size": "171588",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.mp4",
                   "mp4_size": "24810",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100.webp",
                   "webp_size": "98738"
               },
               "downsized_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized_s.gif",
                   "width": "480",
                   "height": "306",
                   "size": "31226"
               },
               "downsized":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized.gif",
                   "width": "480",
                   "height": "306",
                   "size": "857824"
               },
               "downsized_large":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                   "width": "480",
                   "height": "306",
                   "size": "1455019"
               },
               "fixed_width_small_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w_s.gif",
                   "width": "100",
                   "height": "64",
                   "size": "3929"
               },
               "preview_webp":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.webp",
                   "width": "248",
                   "height": "158",
                   "size": "44874"
               },
               "fixed_width_still":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_s.gif",
                   "width": "200",
                   "height": "128",
                   "size": "13443"
               },
               "fixed_width_small":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.gif",
                   "width": "100",
                   "height": "64",
                   "size": "88649",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.mp4",
                   "mp4_size": "13071",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/100w.webp",
                   "webp_size": "48068"
               },
               "downsized_small":
               {
                   "width": "376",
                   "height": "240",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-downsized-small.mp4",
                   "mp4_size": "48716"
               },
               "fixed_width_downsampled":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_d.gif",
                   "width": "200",
                   "height": "128",
                   "size": "54387",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200w_d.webp",
                   "webp_size": "32794"
               },
               "downsized_medium":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                   "width": "480",
                   "height": "306",
                   "size": "1455019"
               },
               "original":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.gif",
                   "width": "480",
                   "height": "306",
                   "size": "1455019",
                   "frames": "30",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.mp4",
                   "mp4_size": "211976",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.webp",
                   "webp_size": "372054",
                   "hash": "8fe8051b9cea9e7490392b688bb99d79"
               },
               "fixed_height":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.gif",
                   "width": "314",
                   "height": "200",
                   "size": "513591",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.mp4",
                   "mp4_size": "79481",
                   "webp": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/200.webp",
                   "webp_size": "271036"
               },
               "hd":
               {
                   "width": "972",
                   "height": "620",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-hd.mp4",
                   "mp4_size": "1075923"
               },
               "looping":
               {
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-loop.mp4",
                   "mp4_size": "2308472"
               },
               "original_mp4":
               {
                   "width": "480",
                   "height": "306",
                   "mp4": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy.mp4",
                   "mp4_size": "211976"
               },
               "preview_gif":
               {
                   "url": "https://media3.giphy.com/media/82UMSsbQPRlDIb1vU3/giphy-preview.gif",
                   "width": "151",
                   "height": "96",
                   "size": "49451"
               },
               "480w_still":
               {
                   "url": "https://media0.giphy.com/media/82UMSsbQPRlDIb1vU3/480w_s.jpg",
                   "width": "480",
                   "height": "306"
               }
           },
           "title": "colton underwood crying GIF by The Bachelor",
           "analytics":
           {
               "onload":
               {
                   "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=SEEN"
               },
               "onclick":
               {
                   "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=CLICK"
               },
               "onsent":
               {
                   "url": "https://giphy-analytics.giphy.com/simple_analytics?response_id=5cc5e6bd62507a474d018d34&event_type=GIF_TRENDING&gif_id=82UMSsbQPRlDIb1vU3&action_type=SENT"
               }
           }
       }

    """
    
    
    
}
