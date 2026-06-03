class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780526379-g8da647"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780526379-g8da647/amp-darwin-arm64"
      sha256 "8c35cf5fd47c5962cffda5401c5e4ec6aa6093a05e59e1a00c36a822526b6125"
    else
      url "https://static.ampcode.com/cli/0.0.1780526379-g8da647/amp-darwin-x64"
      sha256 "0a153c90d51c1ec18343be778a689b829010902183e501ec099a6c17a5dd8fcd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780526379-g8da647/amp-linux-arm64"
      sha256 "6c9caad793cbe4c87278ba3df6eda9cee035b2c4a5eacdc253bad8e5006643e9"
    else
      url "https://static.ampcode.com/cli/0.0.1780526379-g8da647/amp-linux-x64"
      sha256 "dca1aa4e864b0b47fbfb39820fe1b4f9f392c0e8a13083b43daba3b4e3cab60c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
