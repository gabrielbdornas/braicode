---
blog:
  author: Gabriel Braico Dornas
  image: https://imgur.com/emKiLpN.png
---

# Special characters in proxy environment variable and URLs

## Special characters in proxy environment variable

In the Linux command interpreter environment there are environment variables that are used to store the proxy server address.
The client programs, compatible with this feature, use them as configuration parameters.
In Bash and similar there are `http_proxy`,  `https_proxy`, `ftp_proxy`, `gopher_proxy`, `wais_proxy`, and `no_proxy` variables. 
Each variable is for a specific protocol and the `no_proxy` variable specifies a set of domains, separated by commas, for which the proxy will not be consulted.

The assignment of values ​​for these environment variables can be done by the `http_proxy="http://<address>:<port>` configuration or, if authentication is required, `http_proxy="http://<username>:<password>@<address>:<port>`.
In cases of proxy with a user and password authentication, there can be special characters, especially in the password.
In these cases, for the shell to correctly interpret the values, it may be necessary to use escape codes in these characters. 
This is percent encoding for URL escape characters:

| Caractere | Codificação | Caractere | Codificação |
|-----------|-------------|-----------|-------------|
| espaço    | %20         | #         | %23         |
| $         | %24         | %         | %25         |
| &         | %26         | @         | %40         |
| `         | %60         | /         | %2F         |
| :         | %3A         | ;         | %3B         |
| <         | %3C         | =         | %3D         |
| >         | %3E         | ?         | %3F         |
| [         | %5B         | \         | %5C         |
| ]         | %5D         | ^         | %5E         |
| {         | %7B         | \|        | %7C         |
| }         | %7D         | ~         | %7E         |
| +         | %2B         | ,         | %2C         |

For example, a password defined as 12@elo/6c must be informed in the variable declaration in the form 12%40elo%2F6c, so there will be no problems in the interpretation by the shell.

```yaml remark
type: primary
text: If the password contains special characters such as @ and #, these must be replaced by escape characters.
```

## Special characters in URLs

In the Uniform Resource Locator (URL), that is, in an Internet address, percent-encoding is used to prevent misinterpretation of special characters such as spaces, parentheses, and other symbols. 
The web browser parses the location address and encodes/decodes the special characters so that everything works properly.
The use of percent encoding is required in cases of non-printing characters, non-ASCII characters, characters reserved for the syntax of a URL ("$", "&", "+", ",", "/", " :", ";", "=", "?", "@") and unsafe characters that can fool a URL (space, "<", ">", "#", "%", "{", "}", "|", "\", "^", "~", "[", "]", "`").
Check in [Online URL Encode Decoder](https://www.url-encode-decode.com/#:~:text=Which%20Characters%20Are%20Allowed%20in%20a%20URL) which characters are allowed in a URL.

## References

- [Codificação por cento para caracteres de escape em URL](http://dan-scientia.blogspot.com/2010/05/encoding-per-cento-para-caracteres.html)

- [Caracteres especiais na variável de ambiente do proxy](https://dan-scientia.blogspot.com/2011/07/caracteres-especiais-na-variavel-de.html)

- [Online Url Encode Decode](https://www.url-encode-decode.com/)

- [Wikipedia Percent Encoding](https://en.wikipedia.org/wiki/Percent-encoding)

- [CAMG HTTPS_PROXY explanation](https://dcgf.gitlab.io/config-ambiente.html#https_proxy)

