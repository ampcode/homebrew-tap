class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771043393-g8c86b8"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771043393-g8c86b8/amp-darwin-arm64"
      sha256 "88fa5257f3566a3eed5e2d96a94969715d6a3a4462192a311edf09ca76238bf8"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771043393-g8c86b8/amp-darwin-x64"
      sha256 "4f8e9a5e6f6b12a60b0ec19c157e9c20ac32ee17131e9cec96b7ead879a7a2fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771043393-g8c86b8/amp-linux-arm64"
      sha256 "ff45493ad803219e551a0fd8356f365a5c12b80f519e69802231290a650ff34d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771043393-g8c86b8/amp-linux-x64"
      sha256 "022f084c7300b32ece9c061d41b079f03c0ca65c432e7c51b0ef9515bdcab069"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
