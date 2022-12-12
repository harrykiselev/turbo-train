if (js_entrypoint_path = Rails.root.join("app/javascript/application.js")).exist?
  say "Importing Turbo Train"
  append_to_file "app/javascript/application.js", %(import "@Uscreen-video/turbo-train"\n)
else
  say "You must import @Uscreen-video/turbo-train in your JavaScript entrypoint file", :red
end

say "Installing Turbo Train"
run "yarn add @Uscreen-video/turbo-train"
