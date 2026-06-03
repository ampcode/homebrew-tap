class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1780464815-g688406"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780464815-g688406/amp-darwin-arm64"
      sha256 "7078c183f7fd57bc89df2c5d8fa3612bffd2ce84fc311ad24697e6009f1d93da"
    else
      url "https://static.ampcode.com/cli/0.0.1780464815-g688406/amp-darwin-x64"
      sha256 "1cc80b853c7595119d876a3ff4ff49a7029b81175719bd5dc318004ce0a02d52"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1780464815-g688406/amp-linux-arm64"
      sha256 "3e7021851f2b892f2aa79218f080530a4ffd592e4324b645c60b20ed32cce43e"
    else
      url "https://static.ampcode.com/cli/0.0.1780464815-g688406/amp-linux-x64"
      sha256 "5f13524555488c6a6e5b5a4cc1b6360b125715ef1906236625ff8efaf07498a3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
