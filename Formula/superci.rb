# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.16.7.tgz"
      sha256 "fcd2e9af5415c97d5b45264efaa02f735ec4bd3d8248ecce2255e0b48f6b8845"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.16.7.tgz"
      sha256 "9b08189887cbca18231278f7f17ab765071da6b48d5b118793a238a13afe02cb"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.16.7.tgz"
      sha256 "c64c55152e5a66489d034454efa151624fe35b66e7995ea6ab0754bbb827f2b1"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.16.7.tgz"
      sha256 "1f55e449552702799d1b0382faa4ed1a0bbb2f1649a425fb9ac090460b231b77"
    end
  end

  def install
    # npm's archive holds the program under package/, which Homebrew takes away when it unpacks.
    bin.install "superci"
  end

  test do
    assert_equal "superci #{version}", shell_output("#{bin}/superci --version").strip
  end
end
