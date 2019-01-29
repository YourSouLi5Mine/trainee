# Virtual Machine 

_IRB -> Interactive Ruby
It is a tool to interactively execute ruby expressions read from standard
input. The `irb` command will start the interpreter._

```
Usage:  irb.rb [options] [programfile] [arguments]
  -f                Suppress read of ~/.irbrc
  -m                Bc mode (load mathn, fraction or matrix are available)
  -d                Set $DEBUG to true (same as `ruby -d')
  -r load-module    Same as `ruby -r'
  -I path           Specify $LOAD_PATH directory
  -U                Same as `ruby -U`
  -E enc            Same as `ruby -E`
  -w                Same as `ruby -w`
  -W[level=2]       Same as `ruby -W`
  --inspect         Use `inspect' for output (default except for bc mode)
  --noinspect       Don't use inspect for output
  --readline        Use Readline extension module
  --noreadline      Don't use Readline extension module
  --prompt prompt-mode
  --prompt-mode prompt-mode
                    Switch prompt mode. Pre-defined prompt modes are
                    `default', `simple', `xmp' and `inf-ruby'
  --inf-ruby-mode   Use prompt appropriate for inf-ruby-mode on emacs.
                    Suppresses --readline.
  --simple-prompt   Simple prompt mode
  --noprompt        No prompt mode
  --tracer          Display trace for each execution of commands.
  --back-trace-limit n
                    Display backtrace top n and tail n. The default
                    value is 16.
  --irb_debug n     Set internal debug level to n (not for popular use)
  -v, --version     Print the version of irb
```

```
$ irb
irb(main):001:0> 1+2
#=> 3
irb(main):002:0> class Foo
irb(main):003:1>  def foo
irb(main):004:2>    print 1
irb(main):005:2>  end
irb(main):006:1> end
#=> nil
```
