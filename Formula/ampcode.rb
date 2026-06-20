class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781975469-gcac319"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781975469-gcac319/amp-darwin-arm64"
      sha256 "0fdac48c0694818be8c07dce30e5a649418c00913479f03cffb34a76af52d2fe"
    else
      url "https://static.ampcode.com/cli/0.0.1781975469-gcac319/amp-darwin-x64"
      sha256 "37b1303b9802490df4a739d3905d5932259b579ac142d56c57ed345fe88605e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781975469-gcac319/amp-linux-arm64"
      sha256 "1067c6c937adf3021431b74a5f124261419f29e5cf47b4b454c5fff23c18dcf0"
    else
      url "https://static.ampcode.com/cli/0.0.1781975469-gcac319/amp-linux-x64"
      sha256 "64e5b7d4d44238f4a48fa355d47150e291af000f410e6e147d847b3ce4667638"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
