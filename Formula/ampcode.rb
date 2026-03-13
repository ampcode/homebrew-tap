class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773376232-g868261"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773376232-g868261/amp-darwin-arm64"
      sha256 "fa73194625cf4fbc23129b7ed50d83bbaa1ff695f8e624bab33cf77d4dcd5e0e"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773376232-g868261/amp-darwin-x64"
      sha256 "19cb6c05386938bf7b0314eb2e6edb2df78b5cdc367a9ac72e913505db59f588"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773376232-g868261/amp-linux-arm64"
      sha256 "17609f6acf87086b71e2326b565cc36618c93878929bc4bd30b648a412276ead"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773376232-g868261/amp-linux-x64"
      sha256 "d96cdfd6edbef8e1256e0780750d0f5c211e243ac259b444a55969b5b8216dbe"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
