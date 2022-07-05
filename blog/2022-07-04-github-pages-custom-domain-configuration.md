---
blog:
  author: Gabriel Braico Dornas
  image: https://i.imgur.com/H8Rzxh7.png
---

# GitHub Pages Custom Domain Configuration

When using [GitHub Pages](https://pages.github.com/) it's possible to use a custom domain, other then the default provided by GiHub.

I generally bought my domains at [Namecheap](https://www.namecheap.com/) and that's why I'm going to show the DNS steps configuration from this provider, but the same logic could be used whatever you want.

## GitHub configuration

Go to Setting >> Pages and put your custom domain at the indicated place, as shown below:

![GitHub Image](https://i.imgur.com/hEp8IyP.png)

## Name cheap Configuration

On your admin panel at Namecheap go to "Advanced DNS" option:

![Namecheap Image](https://i.imgur.com/r2U9Af3.png)

Click in "ADD NEW RECORD" and create 4 "A Record". Each of one with de values:

  - 185.199.108.153
  - 185.199.109.153
  - 185.199.110.153
  - 185.199.111.153

Obs.: Here I'm configuring a host "code" because I want a subdomain "code.braico.me" if you want to configure directly to your domain just use "@" here.

![Namecheap Image](https://i.imgur.com/Z8XBMs1.png)

Follow the steps suggested [in GitHub documentation](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site/verifying-your-custom-domain-for-github-pages) to verify your custom domain. 
This will generate a "TXT" record as shown below:

![Namecheap Image](https://i.imgur.com/gbfB4AG.png)

Create a "CNAME Record"

![Namecheap Image](https://i.imgur.com/Sb2rks1.png)

May take some time to the new DNS register take effect but after all your GitHub configuration should looks like:

![GitHub Image](https://i.imgur.com/H8Rzxh7.png)

## References

- [How to Create a Subdomain - Namecheap YouTube Video](https://www.youtube.com/results?search_query=configure+a+subdomain+on+github+and+namecheap)

- [How to Create a Subdomain - Namecheap Post](https://www.namecheap.com/support/knowledgebase/article.aspx/9776/2237/how-to-create-a-subdomain-for-my-domain/)

- [How to Host on Github Pages and Add Custom Namecheap Domain](https://www.youtube.com/watch?v=eKekNn-1Pcg)

- [Stackoverflow answer](https://stackoverflow.com/a/72595687/11755155)