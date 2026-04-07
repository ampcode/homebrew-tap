class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775537103-gbc0a06"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775537103-gbc0a06/amp-darwin-arm64"
      sha256 "934c7df9d5a8d62c58b117cb766b3085f285daf75e0bcc0d73714f80a5036f7e"
    else
      url "https://static.ampcode.com/cli/0.0.1775537103-gbc0a06/amp-darwin-x64"
      sha256 "f7f5ec2ee4a26f254965fc1bc410d70a73c27740f98f94978eaadbde0d29f523"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775537103-gbc0a06/amp-linux-arm64"
      sha256 "eb0c0ca3a2840198f686dcb3b5418b2e5a1accb13bf3442284e65693f6ce9675"
    else
      url "https://static.ampcode.com/cli/0.0.1775537103-gbc0a06/amp-linux-x64"
      sha256 "b822895de271ad9c2149c9b077462ebecdf987faf114378b4bd8cf42d8393152"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
