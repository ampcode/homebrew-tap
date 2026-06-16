class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1781615465-g4aaf29"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781615465-g4aaf29/amp-darwin-arm64"
      sha256 "ca2f5331b4f091c5fc17b9db4f2fce04913cbd17c74e84962199f6177e8302a6"
    else
      url "https://static.ampcode.com/cli/0.0.1781615465-g4aaf29/amp-darwin-x64"
      sha256 "2ac144f6302ef8ae537d0e757d6e42370c49ca5c05f17a03b077475a8975297d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1781615465-g4aaf29/amp-linux-arm64"
      sha256 "97fc23118af4681434622b03c6a43e4c975be91f628fcf91e0bb562f3fd3dabe"
    else
      url "https://static.ampcode.com/cli/0.0.1781615465-g4aaf29/amp-linux-x64"
      sha256 "f3435a0c906c723a56cd6de04f6bde9e3b820c6a3e03ac47bf5eef6beda69e3a"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
