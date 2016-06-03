# Pactera JeeSite 企业信息化快速开发平台 V1.2.11-SNAPSHOT

## 项目工程区域
这个工程是放在最后的最外围的web工程，起到聚合的作用，即把所有的web项目，打成最终的war包。同时，在这个工程里，放置或替换公共的配置文件，比如*.xml、*.properties等。新项目根据规范，需重新命名本artifactId，以此naming deployment，如山航BI(sdbi)、成都电商平台(cdep)。根据构建开发测试等差异环境需要，引入了profile机制，通过mvn install -Pxxx方式启动定制资源。
