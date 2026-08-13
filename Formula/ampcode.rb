class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786651704-g574433"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786651704-g574433/amp-darwin-arm64"
      sha256 "7127ecf7faf9e39c4f559121be36099d825f96c1c580ec49a06f89fc3573f4d9"
    else
      url "https://static.ampcode.com/cli/0.0.1786651704-g574433/amp-darwin-x64"
      sha256 "9003798dd044c01b924f405f442cc8ce6d07cedb60d588e0ac95fe1995c6e556"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786651704-g574433/amp-linux-arm64"
      sha256 "864a8d9a56e44a3ae5c41236deb849939ec935f50ef354ba030783c9878f1569"
    else
      url "https://static.ampcode.com/cli/0.0.1786651704-g574433/amp-linux-x64"
      sha256 "4fb84e75ab79d947b32071b6eef57015fbd8e2ea3705f140a19974b728bed0a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
