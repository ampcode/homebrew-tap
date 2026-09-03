class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1788393688-g400a7f"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788393688-g400a7f/amp-darwin-arm64"
      sha256 "4ad7321bc1dbd43dd2f8f43c319267573db1dcbc8cbeec6e82e9e317864a386c"
    else
      url "https://static.ampcode.com/cli/0.0.1788393688-g400a7f/amp-darwin-x64"
      sha256 "ebaff762326a6f0c65184410e7abe636480cfd80ff34dfba2cd45cca00e7c8bf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1788393688-g400a7f/amp-linux-arm64"
      sha256 "59945e7a7645e0a9c097de638993e4d4b60e041080ac5189d69f21fad9caf1a6"
    else
      url "https://static.ampcode.com/cli/0.0.1788393688-g400a7f/amp-linux-x64"
      sha256 "bd99845ea1dfc6078ecc741db143247c4dfed5ed208bab0412031bbaac1b837b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
