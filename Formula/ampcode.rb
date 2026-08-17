class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1786968161-gdd03ae"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786968161-gdd03ae/amp-darwin-arm64"
      sha256 "ca7826ae281eeece2969ad0be585c4a38a90edd1db5db17a7931150784d2346c"
    else
      url "https://static.ampcode.com/cli/0.0.1786968161-gdd03ae/amp-darwin-x64"
      sha256 "9add0362a1e647d93e4621ba82c501e0fd5c5b86914f11fbe7c9b1c75a570337"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1786968161-gdd03ae/amp-linux-arm64"
      sha256 "6c5386cf32c352ac0d8727aa3acc2039d59e4e1d3ef267f07a98063854bb8a42"
    else
      url "https://static.ampcode.com/cli/0.0.1786968161-gdd03ae/amp-linux-x64"
      sha256 "91aa4d6ac63c8cdf3134e888660d7d00244f99bf4df4e42a04e70ce46d73ecec"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
