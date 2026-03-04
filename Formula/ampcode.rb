class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1772611585-gac2e61"
  license :cannot_represent

  livecheck do
    url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772611585-gac2e61/amp-darwin-arm64"
      sha256 "a06f7fedf2a0ec4ac9399ac4e33adcab58376a949854ed000ca4fc18d9650eb2"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772611585-gac2e61/amp-darwin-x64"
      sha256 "e0be3c025d8d8f7f1c3602713ec584ab2ef44dab6fcf169fe9672f963ee6fa23"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772611585-gac2e61/amp-linux-arm64"
      sha256 "8d5a362aa74f7c54488f4b70c0962152315fff897f80fcd2522fcc876f63df68"
    else
      url "https://storage.googleapis.com/amp-public-assets-prod-0/cli/0.0.1772611585-gac2e61/amp-linux-x64"
      sha256 "eaca517fd125ff2fe3c4bbe5cfe8ef534eef1d9d8c183df0374063e7d12dee8c"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
