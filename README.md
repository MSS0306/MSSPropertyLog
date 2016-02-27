# MSSPropertyLog
property生成,打印结果
注:赞不支持一个数组内存放不同的对象
# Example
```Objective-c
/*
{
"totalTimesLeft": 0,
"status": "useup",
"collected": false,
"courseContentList": {
"list": [
{
"slaveContentLength": null,
"paperName": null,
"chapterType": 0,
"subjectTitle": "凯程暑期集训营",
"convertStatus": "done",
"threewinMatser": false,
"canSkipTest": true,
"threewinType": null,
"children": null,
"contentType": "video",
"slaveContentId": null,
"id": 1164877,
"parentId": null,
"chapter": false,
"rank": 1,
"level": 1,
"contentTitle": "课时1：凯程暑期集训营",
"seqTitle": "课时1",
"convertable": true,
"lessonType": 1,
"length": "00:49:41",
"hasTestAfterCourse": false,
"otherContentId": null,
"largeCourseContentPhoto": "http://stat.ablesky.cn/content/pic/coursecontentphoto/2014/06/04/52cbfb57-a5d1-4888-b3db-7b82bc1f1200.jpg",
"lesson": true,
"paperId": null,
"paperHasQuestion": null,
"timesLeft": null,
"section": false,
"studyProgress": 0
}
]
},
"descriptionInfo": {
"FTopicTitle": "学习",
"id": 798883,
"tags": null,
"TTopicTitle": "考研专业课",
"STopicTitle": "考研",
"description": "凯程暑期集训营介绍"
},
"organizationId": 1237,
"overviewInfo": {
"commentCnt": 0,
"isSaleOnline": true,
"studyTimes": 93028,
"createTime": 1401876785000,
"threewinType": null,
"isExternalLink": false,
"largeCoursePhoto": "http://stat.ablesky.cn/content/pic/coursecontentphoto/2014/06/04/52cbfb57-a5d1-4888-b3db-7b82bc1f1200.jpg",
"coursePhotoUrl": "http://stat.ablesky.cn/content/pic/coursecontentphoto/2014/06/04/01388576-c276-4662-955e-0fe46a02ee54.jpg",
"id": 798883,
"totalLength": 2981,
"price": 0,
"noSaleHint": null,
"isPurchased": false,
"isFree": false,
"courseTitle": "暑期集训营",
"downloadEnabled": true,
"canRead": false,
"owner": "凯程教育考研网络课堂",
"courseType": "course", 
"photoUrl": "http://js.ablesky.cn/statc//images/init/defaultGroupPicture.png"
}, 
"success": true
}
*/
```

代码调用:
```Objective-c
kPropertyLog(dict1)
```

打印结果:
```Objective-c
@class MSSDescriptioninfoModel;
@class MSSOverviewinfoModel;
@class MSSCoursecontentlistModel;

@interface MSSRootModel : NSObject
@property (nonatomic,copy)NSString *status;
@property (nonatomic,strong)MSSDescriptioninfoModel *descriptionInfo;
@property (nonatomic,strong)NSNumber *organizationId;
@property (nonatomic,strong)MSSOverviewinfoModel *overviewInfo;
@property (nonatomic,strong)NSNumber *success;
@property (nonatomic,strong)NSNumber *collected;
@property (nonatomic,strong)MSSCoursecontentlistModel *courseContentList;
@property (nonatomic,strong)NSNumber *totalTimesLeft;
@end

@interface MSSDescriptioninfoModel : NSObject
@property (nonatomic,copy)NSString *FTopicTitle;
@property (nonatomic,strong)NSNumber *id;
@property (nonatomic,copy)NSString *tags;
@property (nonatomic,copy)NSString *STopicTitle;
@property (nonatomic,copy)NSString *description;
@property (nonatomic,copy)NSString *TTopicTitle;
@end

@interface MSSOverviewinfoModel : NSObject
@property (nonatomic,strong)NSNumber *isFree;
@property (nonatomic,strong)NSNumber *canRead;
@property (nonatomic,strong)NSNumber *downloadEnabled;
@property (nonatomic,copy)NSString *owner;
@property (nonatomic,strong)NSNumber *totalLength;
@property (nonatomic,copy)NSString *threewinType;
@property (nonatomic,strong)NSNumber *studyTimes;
@property (nonatomic,copy)NSString *noSaleHint;
@property (nonatomic,strong)NSNumber *isSaleOnline;
@property (nonatomic,copy)NSString *coursePhotoUrl;
@property (nonatomic,strong)NSNumber *id;
@property (nonatomic,strong)NSNumber *commentCnt;
@property (nonatomic,copy)NSString *largeCoursePhoto;
@property (nonatomic,strong)NSNumber *isPurchased;
@property (nonatomic,copy)NSString *courseType;
@property (nonatomic,strong)NSNumber *createTime;
@property (nonatomic,strong)NSNumber *price;
@property (nonatomic,copy)NSString *courseTitle;
@property (nonatomic,copy)NSString *photoUrl;
@property (nonatomic,strong)NSNumber *isExternalLink;
@end

@interface MSSCoursecontentlistModel : NSObject
@property (nonatomic,strong)NSArray *list;
@end

@interface MSSListModel : NSObject
@property (nonatomic,strong)NSNumber *rank;
@property (nonatomic,copy)NSString *paperName;
@property (nonatomic,copy)NSString *slaveContentId;
@property (nonatomic,copy)NSString *convertStatus;
@property (nonatomic,copy)NSString *otherContentId;
@property (nonatomic,strong)NSNumber *chapterType;
@property (nonatomic,copy)NSString *threewinType;
@property (nonatomic,copy)NSString *paperId;
@property (nonatomic,strong)NSNumber *canSkipTest;
@property (nonatomic,copy)NSString *paperHasQuestion;
@property (nonatomic,copy)NSString *children;
@property (nonatomic,copy)NSString *largeCourseContentPhoto;
@property (nonatomic,strong)NSNumber *lesson;
@property (nonatomic,copy)NSString *subjectTitle;
@property (nonatomic,copy)NSString *slaveContentLength;
@property (nonatomic,strong)NSNumber *id;
@property (nonatomic,copy)NSString *length;
@property (nonatomic,strong)NSNumber *level;
@property (nonatomic,strong)NSNumber *lessonType;
@property (nonatomic,strong)NSNumber *threewinMatser;
@property (nonatomic,copy)NSString *contentType;
@property (nonatomic,copy)NSString *parentId;
@property (nonatomic,copy)NSString *seqTitle;
@property (nonatomic,copy)NSString *contentTitle;
@property (nonatomic,strong)NSNumber *hasTestAfterCourse;
@property (nonatomic,strong)NSNumber *studyProgress;
@property (nonatomic,strong)NSNumber *convertable;
@property (nonatomic,copy)NSString *timesLeft;
@property (nonatomic,strong)NSNumber *section;
@property (nonatomic,strong)NSNumber *chapter;
@end
```
 