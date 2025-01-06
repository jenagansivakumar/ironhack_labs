# Use the .NET SDK 7.0 image for building
FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /app

# Copy the project files and restore dependencies
COPY Basic3TierAPI/Basic3TierAPI.csproj ./Basic3TierAPI/
COPY Basic3Tier.Core/Basic3Tier.Core.csproj ./Basic3Tier.Core/
COPY Basic3Tier.Infrastructure/Basic3Tier.Infrastructure.csproj ./Basic3Tier.Infrastructure/
RUN dotnet restore ./Basic3TierAPI/Basic3TierAPI.csproj

# Copy the full source and build the app
COPY . .
RUN dotnet publish ./Basic3TierAPI/Basic3TierAPI.csproj -c Release -o out

# Use the .NET Runtime 7.0 image for running the app
FROM mcr.microsoft.com/dotnet/aspnet:7.0
WORKDIR /app
COPY --from=build /app/out .

EXPOSE 5000
ENTRYPOINT ["dotnet", "Basic3TierAPI.dll"]
