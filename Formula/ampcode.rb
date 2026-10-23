class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792785637-g8d232a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792785637-g8d232a/amp-darwin-arm64"
      sha256 "e3012801431efa53227cf856564abf9618a46090d3034a0841b2d241ba09211b"
    else
      url "https://static.ampcode.com/cli/0.0.1792785637-g8d232a/amp-darwin-x64"
      sha256 "44d2f610a6c2ca24666fac9eca7c5c62d88f171ed8991ff216fb7bf21de1b6e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792785637-g8d232a/amp-linux-arm64"
      sha256 "2fbbb319c68759f1610839b75725721e3a13270580e041d923fa86a9727323f1"
    else
      url "https://static.ampcode.com/cli/0.0.1792785637-g8d232a/amp-linux-x64"
      sha256 "289ba9ef54e1878e52b3f94924ea176c8f42ce7ae9dcebfc2e33ce97e8bce9b6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
