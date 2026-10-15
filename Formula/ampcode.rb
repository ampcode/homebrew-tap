class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1792080064-g527dd7"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792080064-g527dd7/amp-darwin-arm64"
      sha256 "e31318eefdb6eab896c72b7f9dc2a1afd9696e32b2258bdd17649bc98fb50fc6"
    else
      url "https://static.ampcode.com/cli/0.0.1792080064-g527dd7/amp-darwin-x64"
      sha256 "53c7063793b94f2f4554bdccbd900266c6a862de819b2268316d01f6e8f29182"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1792080064-g527dd7/amp-linux-arm64"
      sha256 "d86e7de1751db053296ebc6f53897278079694a1c33d612643bfd4076b9ae5d0"
    else
      url "https://static.ampcode.com/cli/0.0.1792080064-g527dd7/amp-linux-x64"
      sha256 "5f1cc354adf500e94ca81ae750b6998ccb8237f65ae2a07ef9759bc7969e0d16"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
