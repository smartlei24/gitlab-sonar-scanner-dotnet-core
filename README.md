# gitlab-sonar-scanner-dotnet-core

提供 Dotnet Core 的单元测试，Sonarscanner 静态分析的环境

## 环境

基础镜像： microsoft/dotnet:2.1-runtime-deps-alpine3.7
dotnet sdk: 2.1.5  
dotnet-sonarscanner: 4.3.1  
openjdk8  
nss  
git  

## 关于Dotnet SDK

为什么不直接用官方编译版本？  
sonarscanner 目前仅支持 msbuild 14/15 版本，而官方版本目前只能使用最新的 2.1.9 的 SDK，其内置的 msbuild 已经到 16 版了，sonarscanner 不支持，因此在镜像复制了旧版本 SDK 的 Dockerfile 内容。

