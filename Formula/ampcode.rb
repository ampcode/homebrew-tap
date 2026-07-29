class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1785284205-g053e74"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785284205-g053e74/amp-darwin-arm64"
      sha256 "b875b92fa70c953fd3e650a27e875f6a5da10a89d9a1675c5cd8174b772fe0df"
    else
      url "https://static.ampcode.com/cli/0.0.1785284205-g053e74/amp-darwin-x64"
      sha256 "46f9a93072617f75510048eb89e4463457d02e064ffd9767b2a1fb8478ba6074"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1785284205-g053e74/amp-linux-arm64"
      sha256 "c76b1fba83f1bb45587ac303b11665da6aa90fe181a70d1d850674bfc4a908b8"
    else
      url "https://static.ampcode.com/cli/0.0.1785284205-g053e74/amp-linux-x64"
      sha256 "f377f8b78470659c8bd03a8820c3f3c2836dbc9dc679b830c5e0199020f8b3f1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
