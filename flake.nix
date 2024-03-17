{
  inputs = {typhon.url = "github:typhon-ci/typhon";};

  outputs = {
    self,
    typhon,
  }: {
    typhonProject = typhon.lib.github.mkProject {
      owner = "hughjfchen";
      repo = "hsprjup";
      secrets = ./secrets.age;
      typhonUrl = "detachmentsoft.cyou";
    };
  };
}
