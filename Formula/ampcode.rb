class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1782746566-g840b63"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782746566-g840b63/amp-darwin-arm64"
      sha256 "90c1de4cfd1d29490719725d284cd1af7be2e8c16683ff8f78fd6764e90f1e4f"
    else
      url "https://static.ampcode.com/cli/0.0.1782746566-g840b63/amp-darwin-x64"
      sha256 "6beb5ec8e9e52feb8cef80a00f2a18f84bd376553f8f8c0e6a465bf0622c36cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1782746566-g840b63/amp-linux-arm64"
      sha256 "1606d3c3602fab6971ee178ca63b35857cb7ce20af3bb5562a2b9e66b4bf4875"
    else
      url "https://static.ampcode.com/cli/0.0.1782746566-g840b63/amp-linux-x64"
      sha256 "540f271ec2fbc2a016c84d11b0eb0a428bcd61a210d19eb89fd2c222a95f01d2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
