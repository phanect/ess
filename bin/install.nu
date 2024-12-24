def install [ pkg: string, --pm: string,  --freeze(-f): bool ] {
  match $pm {
    "npm" => {
      if freeze {
        npm ci
      } else {
        npm install $pkg
      }
    },
    "yarn" => {
      yarn install $pkg
    },
    "pnpm" => {
      pnpm install $pkg
    },
    "bun" => {
      bun install $pkg
    },
    _ => $"Unsupported package manager \"($pm)\" given"
  }
}
