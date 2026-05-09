class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778315336-g6ab49f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778315336-g6ab49f/amp-darwin-arm64"
      sha256 "5e84ecd24338d4691e28b11fadbabbb1ade56ae18a3eb6323245ac94c8faf9ea"
    else
      url "https://static.ampcode.com/cli/0.0.1778315336-g6ab49f/amp-darwin-x64"
      sha256 "30b907b26450103f8765e1fd751be08d2776d1c352295511d9642891289063d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778315336-g6ab49f/amp-linux-arm64"
      sha256 "dedebf8c359ae64da9f55a492d9a17ec1a50bbf73ddee890e76e1d23b147d13e"
    else
      url "https://static.ampcode.com/cli/0.0.1778315336-g6ab49f/amp-linux-x64"
      sha256 "abada9f48698ed93082d098f277de6919b47b0efffbc1a455186db12886a9eea"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
