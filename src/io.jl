"""
Redirects stdout to a file.

# Example

```julia
import Util

Util.redirect_stdout_to_file("log.txt") do
  for i in 1:20
    sleep(.1)
    print("#")
    flush(stdout)
  end
  println()
end
```
"""
function redirect_stdout_to_file(f::Function, path::String)
  open(path, "w") do io
    redirect_stdout(io) do
      f()
    end
  end
end
