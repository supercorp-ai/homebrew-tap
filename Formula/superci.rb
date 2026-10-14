# Written by scripts/brew-formula.sh in supercorp-ai/superci at each release. Not edited by hand.
class Superci < Formula
  desc "GitHub Actions and GitLab CI jobs on your own AWS, Cloudflare and Modal"
  homepage "https://superci.dev"
  license "MIT"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-darwin-arm64/-/cli-darwin-arm64-0.18.0.tgz"
      sha256 "9bd1044fdf1a66ff5f4ea8b9d7410779c5aeae24521469f8403a72c621ae747a"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-darwin-x64/-/cli-darwin-x64-0.18.0.tgz"
      sha256 "7f151bcbbdeaf74ea6c3c4b0d1e0cd09eeea999c3960af01c1ff22bcea271975"
    end
  end

  on_linux do
    on_arm do
      url "https://registry.npmjs.org/@superci/cli-linux-arm64/-/cli-linux-arm64-0.18.0.tgz"
      sha256 "659ca5ae727add81529c6ad474b15d19a96b943f15723cf6f3562638e21b7cad"
    end

    on_intel do
      url "https://registry.npmjs.org/@superci/cli-linux-x64/-/cli-linux-x64-0.18.0.tgz"
      sha256 "f8d6574891c1c929474a56fb87d2a47cae08fbea12534e2a4db07a1f030c868e"
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
