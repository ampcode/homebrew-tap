class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769561778-gb12e28"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "/0.0.1769561778-gb12e28/amp-darwin-arm64"
      sha256 "30181f18cc8fd6dbc18fe3ae09701d71e793691ced0bda04fd2c3f0dd74ffbc3"
    else
      url "/0.0.1769561778-gb12e28/amp-darwin-x64"
      sha256 "60ccffbaa6f44026a8463d750ff3e334eb13c936662b2a512b190296b740155b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "/0.0.1769561778-gb12e28/amp-linux-arm64"
      sha256 "4f64b49b4e75461910e4e27f7c281748f944958028b1e5bb78c47d41d5d9b8ec"
    else
      url "/0.0.1769561778-gb12e28/amp-linux-x64"
      sha256 "dd9bae061e8f2521ba1bd5f8a11b0969ea42535770b55281a708fd115d97f1b8"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
