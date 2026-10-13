class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1791864325-g52e626"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791864325-g52e626/amp-darwin-arm64"
      sha256 "bb27d604d2e796f20b02a8587bbe738357ab78b15e6c65ff2a1c8252c5c0e1a8"
    else
      url "https://static.ampcode.com/cli/0.0.1791864325-g52e626/amp-darwin-x64"
      sha256 "6347f517e332427452fc708d989282bf82855aa7372057304604bbb79799aa0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1791864325-g52e626/amp-linux-arm64"
      sha256 "9851d9464359eee7c2992f42c7e09a1e9c02ec11cda1aae9044d9b4e9e0117f5"
    else
      url "https://static.ampcode.com/cli/0.0.1791864325-g52e626/amp-linux-x64"
      sha256 "9c15d30871f9c4fb79f6a153e8f0683862aefc9d5161f9a2dc7583023357aff3"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
