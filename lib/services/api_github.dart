import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class ApiGithubService {
  Future<List<dynamic>> searchRepositories() async {
    // LIMITE DE REQUISIÇÕES ATINGIDO
    var url = Uri.parse('https://api.github.com/users/eseiji/repos');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = await convert.jsonDecode(response.body);
      return jsonResponse;
    } else {
      throw Exception('Erro: ${response.body}');
    }
  }

  // USAR
  List<dynamic> repositories = [
    {
      "id": 420216124,
      "node_id": "R_kgDOGQv9PA",
      "name": "bar",
      "full_name": "eseiji/bar",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/bar",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/bar",
      "forks_url": "https://api.github.com/repos/eseiji/bar/forks",
      "keys_url": "https://api.github.com/repos/eseiji/bar/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/bar/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/bar/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/bar/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/bar/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/bar/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/bar/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/bar/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/bar/tags",
      "blobs_url": "https://api.github.com/repos/eseiji/bar/git/blobs{/sha}",
      "git_tags_url": "https://api.github.com/repos/eseiji/bar/git/tags{/sha}",
      "git_refs_url": "https://api.github.com/repos/eseiji/bar/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/eseiji/bar/git/trees{/sha}",
      "statuses_url": "https://api.github.com/repos/eseiji/bar/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/eseiji/bar/languages",
      "stargazers_url": "https://api.github.com/repos/eseiji/bar/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/bar/contributors",
      "subscribers_url": "https://api.github.com/repos/eseiji/bar/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/bar/subscription",
      "commits_url": "https://api.github.com/repos/eseiji/bar/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/bar/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/bar/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/bar/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/bar/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/bar/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/bar/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/bar/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/eseiji/bar/downloads",
      "issues_url": "https://api.github.com/repos/eseiji/bar/issues{/number}",
      "pulls_url": "https://api.github.com/repos/eseiji/bar/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/bar/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/bar/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/eseiji/bar/labels{/name}",
      "releases_url": "https://api.github.com/repos/eseiji/bar/releases{/id}",
      "deployments_url": "https://api.github.com/repos/eseiji/bar/deployments",
      "created_at": "2021-10-22T19:16:23Z",
      "updated_at": "2021-12-16T00:24:51Z",
      "pushed_at": "2021-12-16T00:24:48Z",
      "git_url": "git://github.com/eseiji/bar.git",
      "ssh_url": "git@github.com:eseiji/bar.git",
      "clone_url": "https://github.com/eseiji/bar.git",
      "svn_url": "https://github.com/eseiji/bar",
      "homepage": null,
      "size": 4118,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "C#",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 499691061,
      "node_id": "R_kgDOHciuNQ",
      "name": "bsafer",
      "full_name": "eseiji/bsafer",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/bsafer",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/bsafer",
      "forks_url": "https://api.github.com/repos/eseiji/bsafer/forks",
      "keys_url": "https://api.github.com/repos/eseiji/bsafer/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/bsafer/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/bsafer/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/bsafer/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/bsafer/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/bsafer/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/bsafer/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/bsafer/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/bsafer/tags",
      "blobs_url": "https://api.github.com/repos/eseiji/bsafer/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/bsafer/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/bsafer/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/eseiji/bsafer/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/bsafer/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/eseiji/bsafer/languages",
      "stargazers_url": "https://api.github.com/repos/eseiji/bsafer/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/bsafer/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/bsafer/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/bsafer/subscription",
      "commits_url": "https://api.github.com/repos/eseiji/bsafer/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/bsafer/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/bsafer/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/bsafer/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/bsafer/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/bsafer/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/bsafer/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/bsafer/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/eseiji/bsafer/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/bsafer/issues{/number}",
      "pulls_url": "https://api.github.com/repos/eseiji/bsafer/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/bsafer/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/bsafer/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/eseiji/bsafer/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/bsafer/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/bsafer/deployments",
      "created_at": "2022-06-04T01:01:28Z",
      "updated_at": "2022-06-04T04:39:22Z",
      "pushed_at": "2022-06-06T21:13:08Z",
      "git_url": "git://github.com/eseiji/bsafer.git",
      "ssh_url": "git@github.com:eseiji/bsafer.git",
      "clone_url": "https://github.com/eseiji/bsafer.git",
      "svn_url": "https://github.com/eseiji/bsafer",
      "homepage": null,
      "size": 147,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Dart",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 379584960,
      "node_id": "MDEwOlJlcG9zaXRvcnkzNzk1ODQ5NjA=",
      "name": "curso-git",
      "full_name": "eseiji/curso-git",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/curso-git",
      "description":
          "Repositório de testes para acompanhamento de vídeo aulas rbtechinfo.",
      "fork": true,
      "url": "https://api.github.com/repos/eseiji/curso-git",
      "forks_url": "https://api.github.com/repos/eseiji/curso-git/forks",
      "keys_url": "https://api.github.com/repos/eseiji/curso-git/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/curso-git/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/curso-git/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/curso-git/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/curso-git/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/curso-git/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/curso-git/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/curso-git/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/curso-git/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/curso-git/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/curso-git/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/curso-git/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/curso-git/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/curso-git/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/curso-git/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/curso-git/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/curso-git/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/curso-git/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/curso-git/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/curso-git/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/curso-git/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/curso-git/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/curso-git/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/curso-git/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/curso-git/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/curso-git/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/curso-git/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/curso-git/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/curso-git/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/curso-git/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/curso-git/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/curso-git/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/curso-git/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/curso-git/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/curso-git/deployments",
      "created_at": "2021-06-23T11:49:05Z",
      "updated_at": "2021-06-23T11:51:46Z",
      "pushed_at": "2021-06-23T11:51:43Z",
      "git_url": "git://github.com/eseiji/curso-git.git",
      "ssh_url": "git@github.com:eseiji/curso-git.git",
      "clone_url": "https://github.com/eseiji/curso-git.git",
      "svn_url": "https://github.com/eseiji/curso-git",
      "homepage": null,
      "size": 1,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Git",
      "has_issues": false,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "master"
    },
    {
      "id": 435986110,
      "node_id": "R_kgDOGfyevg",
      "name": "dev-finance",
      "full_name": "eseiji/dev-finance",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/dev-finance",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/dev-finance",
      "forks_url": "https://api.github.com/repos/eseiji/dev-finance/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/dev-finance/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/dev-finance/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/dev-finance/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/dev-finance/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/dev-finance/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/dev-finance/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/dev-finance/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/dev-finance/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/dev-finance/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/dev-finance/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/dev-finance/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/dev-finance/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/dev-finance/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/dev-finance/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/dev-finance/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/dev-finance/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/dev-finance/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/dev-finance/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/dev-finance/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/dev-finance/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/dev-finance/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/dev-finance/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/dev-finance/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/dev-finance/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/dev-finance/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/dev-finance/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/dev-finance/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/dev-finance/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/dev-finance/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/dev-finance/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/dev-finance/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/dev-finance/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/dev-finance/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/dev-finance/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/dev-finance/deployments",
      "created_at": "2021-12-07T18:27:11Z",
      "updated_at": "2021-12-16T00:27:52Z",
      "pushed_at": "2021-12-16T00:27:49Z",
      "git_url": "git://github.com/eseiji/dev-finance.git",
      "ssh_url": "git@github.com:eseiji/dev-finance.git",
      "clone_url": "https://github.com/eseiji/dev-finance.git",
      "svn_url": "https://github.com/eseiji/dev-finance",
      "homepage": null,
      "size": 14,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "JavaScript",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 492384231,
      "node_id": "R_kgDOHVkv5w",
      "name": "ExpandedInsideListView",
      "full_name": "eseiji/ExpandedInsideListView",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/ExpandedInsideListView",
      "description": null,
      "fork": true,
      "url": "https://api.github.com/repos/eseiji/ExpandedInsideListView",
      "forks_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/teams",
      "hooks_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/ExpandedInsideListView/deployments",
      "created_at": "2022-05-15T04:11:17Z",
      "updated_at": "2022-04-14T12:14:25Z",
      "pushed_at": "2021-12-05T09:47:49Z",
      "git_url": "git://github.com/eseiji/ExpandedInsideListView.git",
      "ssh_url": "git@github.com:eseiji/ExpandedInsideListView.git",
      "clone_url": "https://github.com/eseiji/ExpandedInsideListView.git",
      "svn_url": "https://github.com/eseiji/ExpandedInsideListView",
      "homepage": null,
      "size": 67,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Dart",
      "has_issues": false,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "master"
    },
    {
      "id": 393494845,
      "node_id": "MDEwOlJlcG9zaXRvcnkzOTM0OTQ4NDU=",
      "name": "hello-world",
      "full_name": "eseiji/hello-world",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/hello-world",
      "description": "Projeto git - poo",
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/hello-world",
      "forks_url": "https://api.github.com/repos/eseiji/hello-world/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/hello-world/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/hello-world/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/hello-world/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/hello-world/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/hello-world/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/hello-world/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/hello-world/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/hello-world/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/hello-world/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/hello-world/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/hello-world/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/hello-world/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/hello-world/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/hello-world/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/hello-world/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/hello-world/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/hello-world/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/hello-world/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/hello-world/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/hello-world/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/hello-world/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/hello-world/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/hello-world/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/hello-world/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/hello-world/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/hello-world/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/hello-world/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/hello-world/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/hello-world/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/hello-world/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/hello-world/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/hello-world/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/hello-world/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/hello-world/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/hello-world/deployments",
      "created_at": "2021-08-06T20:26:53Z",
      "updated_at": "2021-08-06T20:29:43Z",
      "pushed_at": "2021-08-06T20:29:40Z",
      "git_url": "git://github.com/eseiji/hello-world.git",
      "ssh_url": "git@github.com:eseiji/hello-world.git",
      "clone_url": "https://github.com/eseiji/hello-world.git",
      "svn_url": "https://github.com/eseiji/hello-world",
      "homepage": null,
      "size": 1,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "C#",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 494585770,
      "node_id": "R_kgDOHXrHqg",
      "name": "mask_text_input_formatter",
      "full_name": "eseiji/mask_text_input_formatter",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/mask_text_input_formatter",
      "description": "Masked text input formatter for flutter.",
      "fork": true,
      "url": "https://api.github.com/repos/eseiji/mask_text_input_formatter",
      "forks_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/teams",
      "hooks_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/mask_text_input_formatter/deployments",
      "created_at": "2022-05-20T19:33:54Z",
      "updated_at": "2022-05-11T01:04:12Z",
      "pushed_at": "2022-03-31T12:29:35Z",
      "git_url": "git://github.com/eseiji/mask_text_input_formatter.git",
      "ssh_url": "git@github.com:eseiji/mask_text_input_formatter.git",
      "clone_url": "https://github.com/eseiji/mask_text_input_formatter.git",
      "svn_url": "https://github.com/eseiji/mask_text_input_formatter",
      "homepage": "",
      "size": 373,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Dart",
      "has_issues": false,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "master"
    },
    {
      "id": 482369303,
      "node_id": "R_kgDOHMBfFw",
      "name": "menuon-flutter",
      "full_name": "eseiji/menuon-flutter",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/menuon-flutter",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/menuon-flutter",
      "forks_url": "https://api.github.com/repos/eseiji/menuon-flutter/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/menuon-flutter/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/menuon-flutter/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/menuon-flutter/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/menuon-flutter/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/menuon-flutter/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/menuon-flutter/deployments",
      "created_at": "2022-04-16T21:54:06Z",
      "updated_at": "2022-04-16T21:55:59Z",
      "pushed_at": "2022-06-03T10:39:52Z",
      "git_url": "git://github.com/eseiji/menuon-flutter.git",
      "ssh_url": "git@github.com:eseiji/menuon-flutter.git",
      "clone_url": "https://github.com/eseiji/menuon-flutter.git",
      "svn_url": "https://github.com/eseiji/menuon-flutter",
      "homepage": null,
      "size": 529,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "Dart",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 464024617,
      "node_id": "R_kgDOG6h0KQ",
      "name": "pizza",
      "full_name": "eseiji/pizza",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/pizza",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/pizza",
      "forks_url": "https://api.github.com/repos/eseiji/pizza/forks",
      "keys_url": "https://api.github.com/repos/eseiji/pizza/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/pizza/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/eseiji/pizza/teams",
      "hooks_url": "https://api.github.com/repos/eseiji/pizza/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/pizza/issues/events{/number}",
      "events_url": "https://api.github.com/repos/eseiji/pizza/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/pizza/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/pizza/branches{/branch}",
      "tags_url": "https://api.github.com/repos/eseiji/pizza/tags",
      "blobs_url": "https://api.github.com/repos/eseiji/pizza/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/pizza/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/pizza/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/eseiji/pizza/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/pizza/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/eseiji/pizza/languages",
      "stargazers_url": "https://api.github.com/repos/eseiji/pizza/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/pizza/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/pizza/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/pizza/subscription",
      "commits_url": "https://api.github.com/repos/eseiji/pizza/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/pizza/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/pizza/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/pizza/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/pizza/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/pizza/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/eseiji/pizza/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/pizza/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/eseiji/pizza/downloads",
      "issues_url": "https://api.github.com/repos/eseiji/pizza/issues{/number}",
      "pulls_url": "https://api.github.com/repos/eseiji/pizza/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/pizza/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/pizza/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/eseiji/pizza/labels{/name}",
      "releases_url": "https://api.github.com/repos/eseiji/pizza/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/pizza/deployments",
      "created_at": "2022-02-27T03:12:20Z",
      "updated_at": "2022-02-27T03:32:34Z",
      "pushed_at": "2022-02-28T19:30:02Z",
      "git_url": "git://github.com/eseiji/pizza.git",
      "ssh_url": "git@github.com:eseiji/pizza.git",
      "clone_url": "https://github.com/eseiji/pizza.git",
      "svn_url": "https://github.com/eseiji/pizza",
      "homepage": null,
      "size": 13574,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "CSS",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    },
    {
      "id": 475962794,
      "node_id": "R_kgDOHF6dqg",
      "name": "whatsappclone-flutter",
      "full_name": "eseiji/whatsappclone-flutter",
      "private": false,
      "owner": {
        "login": "eseiji",
        "id": 62266058,
        "node_id": "MDQ6VXNlcjYyMjY2MDU4",
        "avatar_url": "https://avatars.githubusercontent.com/u/62266058?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/eseiji",
        "html_url": "https://github.com/eseiji",
        "followers_url": "https://api.github.com/users/eseiji/followers",
        "following_url":
            "https://api.github.com/users/eseiji/following{/other_user}",
        "gists_url": "https://api.github.com/users/eseiji/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/eseiji/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/eseiji/subscriptions",
        "organizations_url": "https://api.github.com/users/eseiji/orgs",
        "repos_url": "https://api.github.com/users/eseiji/repos",
        "events_url": "https://api.github.com/users/eseiji/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/eseiji/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/eseiji/whatsappclone-flutter",
      "description": null,
      "fork": false,
      "url": "https://api.github.com/repos/eseiji/whatsappclone-flutter",
      "forks_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/forks",
      "keys_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/teams",
      "hooks_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/hooks",
      "issue_events_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/events",
      "assignees_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/tags",
      "blobs_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/languages",
      "stargazers_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/stargazers",
      "contributors_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/contributors",
      "subscribers_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/subscribers",
      "subscription_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/subscription",
      "commits_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/merges",
      "archive_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/downloads",
      "issues_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/eseiji/whatsappclone-flutter/deployments",
      "created_at": "2022-03-30T16:28:38Z",
      "updated_at": "2022-03-30T16:45:47Z",
      "pushed_at": "2022-03-30T16:45:43Z",
      "git_url": "git://github.com/eseiji/whatsappclone-flutter.git",
      "ssh_url": "git@github.com:eseiji/whatsappclone-flutter.git",
      "clone_url": "https://github.com/eseiji/whatsappclone-flutter.git",
      "svn_url": "https://github.com/eseiji/whatsappclone-flutter",
      "homepage": null,
      "size": 119,
      "stargazers_count": 0,
      "watchers_count": 0,
      "language": "C++",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 0,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 0,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 0,
      "open_issues": 0,
      "watchers": 0,
      "default_branch": "main"
    }
  ];
}
