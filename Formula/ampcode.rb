class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1783069197-g5cdaed"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783069197-g5cdaed/amp-darwin-arm64"
      sha256 "a22afa54bed1c8f26dce71bec20c377fb75dcc55685b50fdb178797c2f3a567e"
    else
      url "https://static.ampcode.com/cli/0.0.1783069197-g5cdaed/amp-darwin-x64"
      sha256 "55e2c5bad32da00aab7f2e6910215d8dcd0d2be00ba5e847ba56ab4bcc4224ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1783069197-g5cdaed/amp-linux-arm64"
      sha256 "f58d80b03fbc344f274305cccbbad95e6c9d61bfe4c7591ff1e6d9cac0f86af2"
    else
      url "https://static.ampcode.com/cli/0.0.1783069197-g5cdaed/amp-linux-x64"
      sha256 "8d33085a660c5eedf5dc0ddcad4fd9712149a3f68680aec237e38de11a3f430f"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
