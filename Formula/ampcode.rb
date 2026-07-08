class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783547350-gd57707"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783547350-gd57707/amp-darwin-arm64"
      sha256 "67cece76db6e4a81fb3892fb794aae3dcf8a9c83c53ebc398295ca55a4130540"
    else
      url "https://static.ampcode.com/cli/0.0.1783547350-gd57707/amp-darwin-x64"
      sha256 "f45f95979568c23ea6c307a5c572963062e28eefdab8cd838bc3fe5ab1be5222"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783547350-gd57707/amp-linux-arm64"
      sha256 "b15c67203723fb581b85cc7144a3fc089f1e933f0c5b85aa072d41b26edb59f0"
    else
      url "https://static.ampcode.com/cli/0.0.1783547350-gd57707/amp-linux-x64"
      sha256 "19943723db865109fcdbe78afd7ca1a313ab7530f9d117f7e97db711efe77cd5"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
