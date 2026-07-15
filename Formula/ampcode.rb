class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1784118271-g4acbbe"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784118271-g4acbbe/amp-darwin-arm64"
      sha256 "491b82ca081022fe419494bebe3418743c025ace3e4fe3bac71c215dbde5c706"
    else
      url "https://static.ampcode.com/cli/0.0.1784118271-g4acbbe/amp-darwin-x64"
      sha256 "80fbeb89c5415d0f032afeb06c69978bf8eca5d21302dc9c322e728f1165fdf3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1784118271-g4acbbe/amp-linux-arm64"
      sha256 "2ef4731b50355d81c09a1f8ddc4aaf132cab345be2708ac20b6f9fa770d49075"
    else
      url "https://static.ampcode.com/cli/0.0.1784118271-g4acbbe/amp-linux-x64"
      sha256 "0be9df6944ac32fde52358380b939a208279f2e88962aa06e82ad8341330d374"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
