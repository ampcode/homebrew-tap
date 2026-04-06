class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1775433977-g406649"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775433977-g406649/amp-darwin-arm64"
      sha256 "3c486c6796fef6d1d707cee8f54317bb9c87abad2c141b69a0b824fdffc286b8"
    else
      url "https://static.ampcode.com/cli/0.0.1775433977-g406649/amp-darwin-x64"
      sha256 "38dd66ceaceffe1fca5633425bbac5f35ed802cd870526eacfe17044acd8f424"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1775433977-g406649/amp-linux-arm64"
      sha256 "8af0888dacfd1f19948a4d1f005fa7fc0ba4aec0008454c0f76ec9203d4ad7fd"
    else
      url "https://static.ampcode.com/cli/0.0.1775433977-g406649/amp-linux-x64"
      sha256 "fb20475b6dd38fc180966d40061999b62567dc3b87ced214bdb6813e097f32d1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
