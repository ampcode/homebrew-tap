class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1770649291-g440f57"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770649291-g440f57/amp-darwin-arm64"
      sha256 "fb7b0f39cd02f9daea20a20657525992fb1a1c8c70697b49fd1497db0eaeb196"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770649291-g440f57/amp-darwin-x64"
      sha256 "6f10593f439b26c5f6e456e00f51721e40c4feeb29c8726856140847350be60f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770649291-g440f57/amp-linux-arm64"
      sha256 "78ea3a0870e0b56d364e6e8cb35aa8efec3e7f06780298e3b4374da3f810713f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1770649291-g440f57/amp-linux-x64"
      sha256 "c8a0522eb132deb247f358ad373e9dce6c6ef420c5df36c2ca5b4f28d9de3b86"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
