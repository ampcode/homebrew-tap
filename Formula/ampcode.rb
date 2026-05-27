class Ampcode < Formula
  desc "CLI for Amp, the frontier coding agent"
  homepage "https://ampcode.com/"
  version "0.0.1779901203-g242684"
  license :cannot_represent

  livecheck do
    url "https://static.ampcode.com/cli/cli-version.txt"
    regex(/^(.+)$/i)
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779901203-g242684/amp-darwin-arm64"
      sha256 "8bd66aab8f74c72840a72ee3154f803ebc31da508b7fe6ec8f7b8d4417bb886f"
    else
      url "https://static.ampcode.com/cli/0.0.1779901203-g242684/amp-darwin-x64"
      sha256 "9357503c538e0d568cedcfd3cac3e647aee02a4a5f4222c795b6cab4088a1686"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://static.ampcode.com/cli/0.0.1779901203-g242684/amp-linux-arm64"
      sha256 "e25526daa1d57adcf43294dc9a9cdf3e315d62c5b26d0da7cc044d32dab692ff"
    else
      url "https://static.ampcode.com/cli/0.0.1779901203-g242684/amp-linux-x64"
      sha256 "4cedc8e8a85de3cfe53572001edd036646d61da7ceab61202f1d9adc52b0e4a1"
    end
  end

  def install
    bin.install Dir["amp-*"].first => "amp"
  end
end
