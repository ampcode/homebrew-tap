class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771670492-gb9a926"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771670492-gb9a926/amp-darwin-arm64"
      sha256 "43ca6ef1cafdebc364f322cf7557d88a7bcf8c59d8566a01823802ce1f3f9fe2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771670492-gb9a926/amp-darwin-x64"
      sha256 "827b492eb4088a31f3526193ca87cb0eefd9fdc1d81606a687b408c92e592b11"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771670492-gb9a926/amp-linux-arm64"
      sha256 "e4e906317c25a4ec0106672ca41e2f0d0dedd777b42d437b70fcbb1b9ce2d0cb"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771670492-gb9a926/amp-linux-x64"
      sha256 "20db54e35e5998675b72bbe2a711d900d6816def534ea0c0aebe116e6a947c14"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
