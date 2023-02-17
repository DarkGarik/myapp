local imageTag = std.extVar('tag');
{
  components: {
  "app": {
    "image": {
      "repository": "gorkov/app:"+imageTag,
      "tag": "latest",
      "imagePullPolicy": "Always"
    }
  }    
  },
}