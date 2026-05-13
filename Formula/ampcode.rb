class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1778661930-g317e7b"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778661930-g317e7b/amp-darwin-arm64"
      sha256 "41331ff26358588953352bb53f981dc68d87118055c51053f4703a89cdbc50d7"
    else
      url "https://static.ampcode.com/cli/0.0.1778661930-g317e7b/amp-darwin-x64"
      sha256 "b99f16dfa62045e5c25f22bec7813fea42b3ee891a0a4d5021273133901b7dd8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1778661930-g317e7b/amp-linux-arm64"
      sha256 "3d7c323de1c5030b8131006377ec65aad0adcd9d81db07184c82133b7e466d41"
    else
      url "https://static.ampcode.com/cli/0.0.1778661930-g317e7b/amp-linux-x64"
      sha256 "afe602bde07a743554d3266589f8ea2b98a520641fd5c55d564f109d18c1f342"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
