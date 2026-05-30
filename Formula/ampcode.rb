class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780157898-g9ed7cb"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780157898-g9ed7cb/amp-darwin-arm64"
      sha256 "cdbad4de08c968aee7530d6ae8194e12b0d2f9e83c37177329d28853a0ba44c2"
    else
      url "https://static.ampcode.com/cli/0.0.1780157898-g9ed7cb/amp-darwin-x64"
      sha256 "594ea8567feed0ebd93097fee83a30d3f1c7731f390dd2052634d9cc4f6adbb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780157898-g9ed7cb/amp-linux-arm64"
      sha256 "6c73edc25e5d90c404396264260e521bf3d056606dae6846496501053c4bff05"
    else
      url "https://static.ampcode.com/cli/0.0.1780157898-g9ed7cb/amp-linux-x64"
      sha256 "4a2d8a6ff3840986028a7096be3ce8780cd35a90c97d75a554350c3389982122"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
