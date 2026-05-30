class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780172352-gac8e8a"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780172352-gac8e8a/amp-darwin-arm64"
      sha256 "164be1be375599bc56640971dfae9a453e7df1475bdaef8a664c32fd4b23fc0f"
    else
      url "https://static.ampcode.com/cli/0.0.1780172352-gac8e8a/amp-darwin-x64"
      sha256 "b8ae80f2e44a0b2281ddf5cfa81b8c7367bf28f67fce9975522f9a563c4a8628"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780172352-gac8e8a/amp-linux-arm64"
      sha256 "82589d1097bd37e97d70ac68f9e8bd628d6172d73a25c9fc830fe421d80e5847"
    else
      url "https://static.ampcode.com/cli/0.0.1780172352-gac8e8a/amp-linux-x64"
      sha256 "5e76a674a381c2874c5581ff06078c3442598e000ae161f9cef2adef4d44abc6"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
