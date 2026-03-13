class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1773416373-ge2c590"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416373-ge2c590/amp-darwin-arm64"
      sha256 "0e4d0f411c76db2a821bae2fcfe6aa06fd9ea8624713534cfe79b30fdd8aceba"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416373-ge2c590/amp-darwin-x64"
      sha256 "3b16c8dd21cf7270b34e3e9bfbe3166ec818abd8db7a6f3b51bd8ec02fe7e225"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416373-ge2c590/amp-linux-arm64"
      sha256 "155c08d67d95566775b00a5369c107196f51e8f424ba9b8af3c6e3ef991a4e93"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1773416373-ge2c590/amp-linux-x64"
      sha256 "bfd0574a0d2cbba328a40bae9c237711acadcf602b1f773a20fdac9f7ff9661b"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
