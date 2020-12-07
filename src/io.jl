"""
Redirects stdout to a file.
"""
function redirect_stdout_to_file(f::Function, path::String)
  open(path, "w") do io
    redirect_stdout(io) do
      f()
    end
  end
end
