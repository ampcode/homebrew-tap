class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1777723890-g3de4e9"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777723890-g3de4e9/amp-darwin-arm64"
      sha256 "c9548d32bd9204691674509457db6ee2de276628a15fadf261c339dd0804e498"
    else
      url "https://static.ampcode.com/cli/0.0.1777723890-g3de4e9/amp-darwin-x64"
      sha256 "0c2f5c4882355654b65e303d61b96f702cac5b5fa4e6a5245978429b18a50147"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1777723890-g3de4e9/amp-linux-arm64"
      sha256 "f24ec72fee2d5dba169b2c891cc7a24724aa462c7eb4c28b29e122fda7ce4421"
    else
      url "https://static.ampcode.com/cli/0.0.1777723890-g3de4e9/amp-linux-x64"
      sha256 "24308dd52427a3e355a76a016675491269016c2feee938a9e737f7a028c8043c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
