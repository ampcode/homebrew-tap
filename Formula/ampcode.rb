class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783442717-g42dbc6"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783442717-g42dbc6/amp-darwin-arm64"
      sha256 "6c6db8c5ba62106420e80a6a7106171b9e29ca8d1a1dac1e35aaeed39d86f627"
    else
      url "https://static.ampcode.com/cli/0.0.1783442717-g42dbc6/amp-darwin-x64"
      sha256 "f493a59f807faf7c5d9587da9a9df6e91e8766caf040a469720df41188943d1d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783442717-g42dbc6/amp-linux-arm64"
      sha256 "7514dc7d7e32cd9220ab3ebfeec2b4bb76875a011dbe3354b4dd928b3a3f2113"
    else
      url "https://static.ampcode.com/cli/0.0.1783442717-g42dbc6/amp-linux-x64"
      sha256 "aa252a5cd963b7d8aeafdfbf21f672209df3b440e180be913cc3807411aab8ed"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
