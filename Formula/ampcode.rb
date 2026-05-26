class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779819200-g185332"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779819200-g185332/amp-darwin-arm64"
      sha256 "16233d669af5c497bc9c995c9277095723c2739a3cd9d715f221f993134c79fd"
    else
      url "https://static.ampcode.com/cli/0.0.1779819200-g185332/amp-darwin-x64"
      sha256 "a748cbcc9d4c937c061aae2f0ff9f071745a1ef0a476b7f2d92af3a5acb57119"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779819200-g185332/amp-linux-arm64"
      sha256 "162f5eb58b8ca73aa2697340481905b973424fca0e7a3aa47b440a144df52548"
    else
      url "https://static.ampcode.com/cli/0.0.1779819200-g185332/amp-linux-x64"
      sha256 "6c2414dc76da750c11251d3510f36c202dc003a43b5eb8c4ac7d60c01dc98c9a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
