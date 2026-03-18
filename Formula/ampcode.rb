class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773858885-g9db929"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858885-g9db929/amp-darwin-arm64"
      sha256 "0f2227e6a70e4d4a915aaebcb7fa38230961f094afcb7302f3f9c59b45c6f7f5"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858885-g9db929/amp-darwin-x64"
      sha256 "bd96548be86827be59ff474639415b5831d950b435b202d73aa4ebce5d6a2512"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858885-g9db929/amp-linux-arm64"
      sha256 "862efe08c1478a1619b15a04b992f3ed1c0cb476dcbbf57067e5d4a4b5f0650f"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773858885-g9db929/amp-linux-x64"
      sha256 "2b0e83ce48cd451cc16296c3caaba29392dd3f6b53f70573e938ec4e921b0718"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
