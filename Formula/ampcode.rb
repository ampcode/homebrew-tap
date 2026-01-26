class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1769385710-g17ff4b"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769385710-g17ff4b/amp-darwin-arm64"
      sha256 "80affeb11ce3c4a9e412b621fd0696272ee1dfcc083b547ea99b23af3cbabcb0"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769385710-g17ff4b/amp-darwin-x64"
      sha256 "e0fb5e1daf443d5ccf9960f6b33736d245d3f2f03fbda5adb163599e6fd59b53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769385710-g17ff4b/amp-linux-arm64"
      sha256 "08a5e6a3533b9b22524169ed13fb30a7afe5fead77f4b387cf76944f75753c5b"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1769385710-g17ff4b/amp-linux-x64"
      sha256 "9620e3d8c40b8b425f403044f88373d803db9f49fac226058b6f9b28d8b9b670"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
