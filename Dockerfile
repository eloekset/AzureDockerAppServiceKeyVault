ARG REPO=mcr.microsoft.com/dotnet/core/runtime
FROM $REPO:3.1-buster-slim
WORKDIR /app
COPY ./extracted ./
ENTRYPOINT ["dotnet", "AzureDockerAppServiceKeyVault.dll"]