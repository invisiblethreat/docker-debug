# docker-debug

Have you ever wanted to easily debug a container using `FROM scratch`? I have.
When I went looking for a better way to do this, I came across [this article](https://medium.com/@rothgar/how-to-debug-a-running-docker-container-from-a-separate-container-983f11740dc6), and then set about building this image.

The most important part is knowing how to attach the container to the same
namespace as the application that you'd like to debug.

```shell
docker run -it \
    --pid=container:<target container name> \
    --net=container:<target container name> \
    --cap-add sys_admin \
    --cap-add sys_ptrace \
    invisiblethreat/docker-debug:latest
```

The default session drops you into a `tmux` session running [this
configuration](https://github.com/invisiblethreat/dotfiles/blob/master/tmux.conf).

## Make it yours!

I'm happy to accept PRs, but maybe you'd have more run if you forked the repo
and made something that is custom just for you!
