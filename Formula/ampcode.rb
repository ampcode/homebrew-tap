class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1771821518-g9c39fa"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771821518-g9c39fa/amp-darwin-arm64"
      sha256 "5354cbb87ba46d25c9944a0fd29957fd865cb780a11a72d4f6398dac7d94d29d"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771821518-g9c39fa/amp-darwin-x64"
      sha256 "1428afd709f6590d770e4a6f8ee58f7c5f876e695cc212e3c59aa5016dd353c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771821518-g9c39fa/amp-linux-arm64"
      sha256 "5eaf0efdcae7e24cac0a5e63d6f616d2845130962b6925ee2d36b4d8caf3f212"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1771821518-g9c39fa/amp-linux-x64"
      sha256 "9e3a7238efcac78bdc3cbe22018219955c1374d5815934789110f87f79632041"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
