class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769949290-gbb0479"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769949290-gbb0479/amp-darwin-arm64"
      sha256 "6e95485e17b123ec9cec49dc6df5aa0a9c39543ffcd8238a67dc49478ce80449"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769949290-gbb0479/amp-darwin-x64"
      sha256 "ea8aaaa2c8bb2749de71efeed6cb8a12086c5ddf617d7a34871dae9b6cdf7a6d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769949290-gbb0479/amp-linux-arm64"
      sha256 "4055e89f901a00dbbdcd597366d2af3b2d376b5e18e01f3ad3e0a67ac52113e5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769949290-gbb0479/amp-linux-x64"
      sha256 "8a6f0d119a27973c59a644b9f89d62a1ee1c56693cfd3492c184305504cdf5f2"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
